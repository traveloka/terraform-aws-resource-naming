output "name" {
  description = "The generated name with random_id presented in padded hexadecimal digits as suffix."
  value       = random_id.this.hex
}
